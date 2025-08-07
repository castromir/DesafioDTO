# Comandos para Configurar e Testar o Servidor HAPI FHIR R4

### Comandos para executar:

```powershell
# 1. Iniciar o servidor
docker-compose up -d

# 2. Aguardar o servidor inicializar (20-30 segundos)
Start-Sleep -Seconds 30

# 3. Verificar se o container está rodando
docker ps

# 4. Verificar logs se necessário
docker logs hapi-fhir-server
```

## Popular Dados via Postman

1. **Importar Collection:** Abra o Postman e importe o arquivo `postman-collection.json`
2. **Configurar Headers:** Todas as requisições já estão configuradas com os headers corretos
3. **Executar Sequencialmente:** Execute as requisições na ordem numerada

### Headers Padrão:
```
Content-Type: application/fhir+json
Accept: application/fhir+json
```

### Sequência de Requisições:

1. **Testar Conexão:** GET `http://localhost:8080/fhir/metadata`
2. **Criar Patient:** POST `http://localhost:8080/fhir/Patient`
3. **Criar Encounter:** POST `http://localhost:8080/fhir/Encounter`
4. **Criar Condition:** POST `http://localhost:8080/fhir/Condition` 
4. **Criar Observation:** POST `http://localhost:8080/fhir/Observation` 
5. **Criar MedicationRequest:** POST `http://localhost:8080/fhir/MedicationRequest` 
6. **Criar Organization:** POST `http://localhost:8080/fhir/Organization`
7. **Criar Practitioner:** POST `http://localhost:8080/fhir/Practitioner`
7. **Criar ServiceRequest:** POST `http://localhost:8080/fhir/ServiceRequest`
8. **Verificar Patients:** GET `http://localhost:8080/fhir/Patient`
9. **Verificar Observations:** GET `http://localhost:8080/fhir/Observation`

## URLs Importantes

- **Servidor FHIR**: http://localhost:8080/fhir
- **Metadados**: http://localhost:8080/fhir/metadata
- **Documentação OpenAPI**: http://localhost:8080/fhir/swagger-ui/index.html

##  Verificações Finais

 **Servidor acessível**: GET http://localhost:8080/fhir/metadata retorna 200  
 **Leitura funcionando**: GET http://localhost:8080/fhir/Patient retorna 200  
 **Escrita funcionando**: POST http://localhost:8080/fhir/Patient retorna 201  
 **Dados populados**: Patients, Encounter, Condition, MedicationRequest, Organization, Practitioner, ServiceRequest Observations criados via Postman

## Arquivos Criados

- `docker-compose-simple.yml` - Configuração do servidor
- `postman-collection.json` - Collection do Postman com todas as requisições
- `PopularHapiFhir.md` - Guia detalhado para população manual