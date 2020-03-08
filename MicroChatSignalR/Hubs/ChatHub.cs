using Microsoft.AspNetCore.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MicroChatSignalR.Hubs
{
    public class ChatHub : Hub
    {
        public async Task Login(string name)
        {
            await Clients.AllExcept(Context.ConnectionId).SendAsync("online", $"{name} 进入了MicroChat！");
        }

        public async Task SigOut(string name) {
            await Clients.AllExcept(Context.ConnectionId).SendAsync("online", $"{name} 退出了MicroChat！");
        }

        public async Task SendMessage(string user, string message)
        {
            await Clients.All.SendAsync("ReceiveMessage", user, message);
        }

        public async Task SendMessageByServer( string message)
        {
            await Clients.All.SendAsync("ReceiveSystemMessage", "管理员:" + message);
        }

    }
}
