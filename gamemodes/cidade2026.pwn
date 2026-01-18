/*
    Cidade Futurista 2026 - Open.mp Edition
    Criado para: rodrigoviana067-cloud
*/

#include <open.mp>
#include <console>

main() {
    print("\n-------------------------------------------");
    print("  Cidade Futurista 2026 v1.0 - Iniciada");
    print("  Plataforma: open.mp (Build 2026)");
    print("-------------------------------------------\n");
}

public OnGameModeInit()
{
    // Configurações da Cidade
    SetGameModeText("Brasil 2026: Futurista");
    
    // Adicionar um Spawn inicial (Ex: Aeroporto ou Centro Tecnológico)
    // Coordenadas de exemplo:
    AddPlayerClass(0, 1642.15, -2333.36, 13.54, 0.0, 0, 0, 0, 0, 0, 0); 
    
    return 1;
}

public OnPlayerConnect(playerid)
{
    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));
    
    new string[128];
    format(string, sizeof(string), "{00FF00}[2026]{FFFFFF} Bem-vindo à Cidade do Futuro, %s!", name);
    SendClientMessage(playerid, -1, string);
    
    // Aqui você conectará com seu database.pwn no futuro
    return 1;
}

public OnPlayerSpawn(playerid)
{
    // Setar uma cor futurista para o jogador (Ciano)
    SetPlayerColor(playerid, 0x00FFFFFF);
    return 1;
}

// Comando de exemplo usando a sintaxe open.mp
public OnPlayerCommandText(playerid, cmdtext[])
{
    if (!strcmp(cmdtext, "/ajuda", true))
    {
        SendClientMessage(playerid, -1, "Use /creditos para saber mais sobre a cidade de 2026.");
        return 1;
    }
    return 0;
}
