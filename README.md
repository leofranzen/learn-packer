# learn-packer

## Packer
Ferramenta criada pela [hashicorp](https://www.packer.io/) com o intuito de automatizar
a criação de imagens para várias plataformas (aws, oci, docker, etc).

## Instalação
1. Baixe o binário
```
wget https://releases.hashicorp.com/packer/1.8.2/packer_1.8.2_linux_amd64.zip
```

2. Certifique-se da váriavel PATH local
```
mkdir -p ~/.local/bin/
PATH="${PATH}:~/.local/bin/"
```

3. Mover o binário para PATH
```
unzip packer_1.8.2_linux_amd64.zip -d ~/.local/bin/
chmod +x ~/.local/bin/packer
packer -version
```

## Documentação oficial
[packer-docs](https://www.packer.io/docs)

[packer-plugins](https://www.packer.io/plugins)
