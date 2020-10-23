      program logp1e3   !nome do programa
!O COMANDO IMPLICIT NONE é necessário para tirar a configuração de variáveis inteiras !começando com i,j,k,l,m,n
          implicit none
!BLOCO DE DECLARAÇÃO DE VARIÁVEIS
          logical :: a,b,c,S     !variáveis lógicas
!BLOCO DE INICIALIZAÇÃO DAS VARIÁVEIS
          a = .true.     !a = verdadeiro
          b = .true.      !b = verdadeiro
          c = .false.      !c=falso
!CÁLCULOS PROPOSICIONAIS
          !S=~a v (~b ^ ~c)
          S = .not.a.or.(.not.b.and..not.c)
!SAÍDA DE DADOS PARA TELA DOS
          write(*,*)'valor logico das proposicoes simples'
          write(*,*) ' a = ', a,' b = ',b, 'c = ', c
          write(*,*)'valor logico da proposicao composta'
          write(*,*) 'S = ~a v (~b ^ ~c) = ',S
!SAÍDA DE DADOS PARA ARQUIVO
          open(10,file='e3.dat',status='replace')               !abertura de arquivo e3.dat
          write(10,*)'valor lógico das proposicoes simples'
              write(10,*) 'a = ', a,'b = ',b, ' c = ', c
              write(10,*)'valor logico da proposicao composta'
              write(10,*) 'S = ~a v (~b ^ ~c) = ', S
          close(10)          !fechamento do arquivo de saída
          pause                ! pausa para parada do programa para verificação dos resultados
!FINALIZAÇÃO DO PROGRAMA
      end program logp1e3      !a instrução program logp1e3 não é necessária
