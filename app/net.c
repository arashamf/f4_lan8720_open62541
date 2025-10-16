#include "net.h"
//#include "socket.h"
#include "usart.h"
#include "lwip/sockets.h"

//----------------------------------------------------------------
#define SOCK_TARGET_PORT  1000
#define MAX_CONN  2
#define TCP_BUFF_SIZE  200

char answer_buff[] = "answer";
uint32_t buflen = TCP_BUFF_SIZE;
char in_buffer[TCP_BUFF_SIZE];

//----------------------------------------------------------------
void tcp_thread(void *pvParameters)
{
    int ret;
    int sock;
    struct sockaddr_in address; //сокет запущенного сервера
    struct sockaddr_in remotehost; //сокет входящего соединения клиента
    socklen_t sockaddrsize;
    int accept_sock;

    memset(&address, 0, sizeof(address));
    address.sin_len = sizeof(address); //set up address to connect to
    address.sin_family = AF_INET;
    address.sin_port = htons(SOCK_TARGET_PORT);
    //inet_addr_from_ip4addr (&addr.sin_addr, ip_2_ip4(ipaddr)); //target_inaddr->s_addr = ip4_addr_get_u32(source_ipaddr)
    address.sin_addr.s_addr = INADDR_ANY;

    if ((sock = socket(AF_INET,SOCK_STREAM, 0)) >= 0) //socket-create an endpoint for communication
    {
        //bind() присваивает адрес неназванному сокету. Сокеты, созданные с помощью функции socket(), изначально не имеют имен; 
        //они идентифицируются только по их семейству адресов
        if (bind(sock, (struct sockaddr *)&address, sizeof (address)) ==  0)
        {
            //Функция listen() помечает сокет в режиме подключения, указанный в аргументе socket, как принимающий соединения, и 
            //ограничивает количество незавершенных подключений в очереди прослушивания сокета вторым аргументом
            listen(sock, MAX_CONN);
            for(;;)
            {
                //Функция accept() извлекает первое соединение из очереди ожидающих подключения, создает новый сокет с тем же типом 
                //протокола и семейством адресов, что и у указанного сокета, и присваивает этому сокету новый файловый дескриптор
                accept_sock = accept(sock, (struct sockaddr *)&remotehost, (socklen_t *)&sockaddrsize);
                if(accept_sock >= 0)
                {
                    for(;;)
                    {
                        if ((ret = recvfrom (accept_sock, in_buffer, buflen, 0, (struct sockaddr *)&remotehost, &sockaddrsize)) > 0)
                        {        
                            in_buffer[ret] = 0; 

                            #ifdef DEBUG_MODE 
                            sprintf (dbg_buf, "socket=%u accept, in_port=%u, in_addr=%lu, in_msg:\r\n%s\r\n", accept_sock, 
                            remotehost.sin_port, remotehost.sin_addr.s_addr, in_buffer);
                            dbg_putStr (dbg_buf);
                            #endif

                            sendto (accept_sock, answer_buff, strlen((char*)answer_buff), 0, (struct sockaddr *)&remotehost, sockaddrsize);
                            close(accept_sock);
                            break;
                        }
                    }
                }
            }
        }
        else
        {
            close(sock);
            return;
        }
    }
}