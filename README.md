# GlobeConnect • Painel Secreto (Controles do Glloopy)

## O que faz
- Liga/Desliga **Anúncios (AdSense)**, **Afiliados** e **Contato Comercial** do site Glloopy.
- Expõe endpoints:
  - `GET /api/status` → estado atual `{ ads, affiliates, contact, updatedAt }`
  - `POST /api/toggle/:feature` → alterna `ads | affiliates | contact`
  - `POST /log` → captura logs do site (opcional)

## Como rodar
```bash
npm i
node server.js
# abre http://localhost:4000/painel.html
```

## Como o site Glloopy usa
No Glloopy, antes de renderizar os blocos:
```js
const status = await fetch('http://SEU-GLOBE:4000/api/status').then(r=>r.json());
if(status.ads){ /* render ads */ }
if(status.affiliates){ /* render afiliados */ }
if(status.contact){ /* render contato */ }
```
Você também pode colocar uma checagem periódica para refletir mudanças em tempo real.
