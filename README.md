<span class="c8 c18">Obligatorio DevOps</span>

<span class="c18 c8"></span>

<span class="c17 c8">Diagrama de Solución</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 557.00px; height: 792.87px;"><img src="images/image9.png"
style="width: 557.00px; height: 792.87px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c18 c8"></span>

<span class="c17 c8">Metodología utilizadas:</span>

<span class="c17 c8"></span>

1.  <span class="c1">Planificación y Seguimiento </span>

<span class="c11 c14">Para la planificación y el seguimiento del
obligatorio se implementó la metodología ágil Kanban, la cual permite
visualizar el flujo de trabajo, priorizar tareas y mantener una mejora
continua en la gestión del equipo.</span>

<span class="c11 c14">En nuestro caso, utilizamos un tablero Kanban en
GitHub Projects, donde organizamos y controlamos las tareas del equipo.
Este tablero se encuentra dividido en las siguientes columnas, que
representan los distintos estados del trabajo:</span>

- <span class="c8">To Do (Por hacer)</span><span class="c11 c14">: aquí
  registramos todas las tareas pendientes que aún no fueron iniciadas.  
  </span>
- <span class="c8">In Progress (En
  progreso)</span><span class="c11 c14">: en esta columna se ubican las
  tareas que están siendo desarrolladas actualmente.  
  </span>
- <span class="c8">Done (Hecho)</span><span class="c11 c14">:
  finalmente, en esta columna se mueven las tareas completadas y
  aprobadas por el equipo.  
  </span>

<span class="c11 c14">De esta forma, el tablero Kanban nos permite
visualizar el estado de avance del proyecto en tiempo real, identificar
posibles bloqueos y mantener una comunicación fluida entre los miembros
del equipo.  </span>

<span class="c11 c8">Screenshots de evolución del flujo de
trabajo:</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 352.00px;"><img src="images/image11.png"
style="width: 601.70px; height: 352.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c11 c8"></span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 356.00px;"><img src="images/image10.png"
style="width: 601.70px; height: 356.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c11 c8"></span>

<span class="c11 c8"></span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 342.67px;"><img src="images/image6.png"
style="width: 601.70px; height: 342.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c11 c8"></span>

<span class="c8 c11"></span>

<span class="c11 c8"></span>

<span class="c11 c8"></span>

<span class="c11 c8"></span>

<span class="c11 c8"></span>

<span class="c11 c14"></span>

1.  <span class="c1">Estrategia de ramificación </span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 222.67px;"><img src="images/image2.jpg"
style="width: 601.70px; height: 222.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c5">El diagrama ilustra de manera visual el flujo de
trabajo que seguimos para gestionar el código utilizando una variante
simplificada de Git Flow, enfocada en mantener un desarrollo ordenado,
controlado y fácilmente rastreable.</span>

<span class="c5">En esta estrategia, la rama main actúa como la línea
base del proyecto, donde se mantienen las versiones estables del
software. Cada punto marcado como V1, V2 y V3 representa una versión
liberada o un hito importante dentro del desarrollo. Estas versiones
solo se generan cuando el código ha sido completamente integrado y
validado.</span>

<span class="c5">A partir de la rama principal, se crean ramas feature/
destinadas al desarrollo de nuevas funcionalidades. En el diagrama se
observa cómo cada funcionalidad se desarrolla de manera aislada en su
propia rama (feature/1 y feature/2). Esta separación permite trabajar en
paralelo sin interferir con el código estable.</span>

<span class="c9">Una vez completada la funcionalidad, la rama feature se
integra nuevamente en main mediante un
</span><span class="c9 c10">merge</span><span class="c5">. Esto se
representa con las flechas ascendentes hacia los puntos de versión
posteriores. Así, por ejemplo, una funcionalidad desarrollada en
feature/1 contribuye a la creación de la versión V2, mientras que otra
desarrollada en feature/2 se integra en la versión V3.</span>

<span class="c5"></span>

1.  <span class="c1">Testing y Calidad </span>

#### <span class="c1">Pruebas funcionales (Postman)</span>

<span class="c5">Se realizaron pruebas funcionales directamente en el
pipeline de CI/CD para asegurar que las distintas etapas del flujo de
trabajo funcionen correctamente. Estas pruebas permiten verificar que
los endpoints y la lógica de la aplicación se ejecuten como se espera
antes de desplegar.</span>

<span class="c5">Resultado de las pruebas en el pipeline:</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 578.00px; height: 439.00px;"><img src="images/image15.png"
style="width: 578.00px; height: 439.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c1"></span>

<span class="c1">Análisis de Código Estático(SonarQube)</span>

<span class="c5">Durante el análisis realizado en SonarQube se
identificaron varios puntos críticos relacionados con la calidad,
seguridad y mantenibilidad del código en los distintos proyectos del
repositorio. A continuación, se resumen los aspectos más
relevantes.</span>

### <span class="c12 c14">Hallazgos Importantes</span>

- <span class="c9">El proyecto DevOpsMain presenta un estado
  </span><span class="c10 c9">Failed</span><span class="c5"> y concentra
  una cantidad significativa de problemas, incluyendo 16 issues de
  seguridad, 15 issues de confiabilidad y 29 code smells. Además, no
  cuenta con ningún nivel de cobertura de pruebas, lo cual representa un
  riesgo elevado en términos de estabilidad y calidad.  
  </span>
- <span class="c5">En DevOpsInventory-Service se detectaron 2 issues de
  seguridad, 4 issues de confiabilidad, 16 code smells y un porcentaje
  de duplicación del 8.8%, considerado alto para su tamaño.  
  </span>
- <span class="c5">El proyecto DevOpsFront presenta 16 issues de
  confiabilidad y 29 code smells, reflejando problemas de mantenibilidad
  y potenciales fallos futuros.  
  </span>
- <span class="c5">En DevOpsProduct-Service se identificó un issue de
  seguridad y la ausencia de revisión en los hotspots detectados.  
  </span>
- <span class="c5">A nivel general, se observa una tendencia común de
  alta cantidad de code smells, falta de cobertura de pruebas y ausencia
  de revisión de hotspots en varios de los proyectos analizados.  
  </span>

### <span class="c12 c14">Mejoras Importantes</span>

- <span class="c5">Priorizar la corrección de los issues de seguridad en
  todos los servicios, especialmente en DevOpsMain y
  DevOpsInventory-Service, por su impacto directo en la integridad del
  sistema.  
  </span>
- <span class="c9">Implementar y ampliar el uso de pruebas unitarias,
  con el objetivo de incrementar significativamente la cobertura,
  particularmente en
  </span><span class="c10 c9">DevOpsMain</span><span class="c5">, donde
  actualmente es inexistente.  
  </span>
- <span class="c5">Reducir el nivel de duplicación de código presente en
  Inventory-Service mediante la refactorización y reutilización de
  componentes y funciones comunes.  
  </span>
- <span class="c5">Abordar la disminución de los code smells en
  DevOpsFront y DevOpsMain para mejorar la mantenibilidad general del
  código.  
  </span>
- <span class="c5">Completar la revisión de hotspots de seguridad en los
  proyectos donde aún no se ha realizado, como DevOpsInventory-Service y
  DevOpsProduct-Service.  
  </span>
- <span class="c5">Revisar y corregir la configuración del análisis en
  DevOpsMain, de forma que permita ejecutar el proceso de evaluación sin
  errores.</span>

### <span class="c12 c8">Justificación sobre la Integración en el Pipeline</span>

<span class="c5">No se consideró necesario añadir estos controles
directamente dentro del pipeline de CI/CD, dado que se implementaron
Quality Gates a través de SonarCloud. Estos Quality Gates permiten
evaluar automáticamente la calidad del código, bloquear despliegues en
caso de incumplimiento y centralizar todas las métricas esenciales de
seguridad, mantenimiento y confiabilidad en un único sistema de
auditoría continua.</span>

<span class="c5"></span>

<span class="c1">Capturas dentro de SonarQube:</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 664.00px; height: 273.50px;"><img src="images/image8.png"
style="width: 664.00px; height: 273.50px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 662.00px; height: 313.19px;"><img src="images/image3.png"
style="width: 662.00px; height: 313.19px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c1"></span>

1.  <span class="c1">Infraestructura como Código(Iac)</span>

<span class="c5">Se generó toda la infraestructura necesaria para los
tres entornos del proyecto (dev, test y main) utilizando
Terraform.</span>

<span class="c5">Mediante el uso de terraform.workspace, se logró que la
misma configuración declare y despliegue automáticamente los recursos
apropiados para cada ambiente, evitando duplicar código y manteniendo
una infraestructura consistente y fácil de mantener.</span>

<span class="c5">Con este enfoque, cada entorno cuenta con su propio
conjunto aislado de recursos (EKS, dashboards, alertas, Lambda, etc.),
permitiendo realizar pruebas y despliegues de manera independiente sin
afectar a los demás ambientes.</span>

<span class="c8 c9">Pruebas:</span><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 182.67px;"><img src="images/image13.png"
style="width: 601.70px; height: 182.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c5"></span>

1.  <span class="c8 c9">Control de Versiones</span>

<span class="c9">Para el control de versiones del proyecto se utilizó
Git, permitiendo gestionar los cambios del código de forma segura,
colaborativa y trazable. Además, se empleó GitHub como plataforma
centralizada para alojar los repositorios, gestionar
</span><span class="c10 c9">pull requests</span><span class="c5">,
revisar código y coordinar el flujo de trabajo entre equipos.</span>

<span class="c5">Nuestra solución se estructuró dentro de una
organización de GitHub, diseñada para separar responsabilidades y
facilitar el mantenimiento, escalabilidad e independencia de cada
servicio. Esta organización está compuesta por cuatro repositorios, cada
uno enfocado en un componente específico del sistema:</span>

- <span class="c9">DevOpsMain:</span><span class="c10 c9">  
  </span><span class="c5"> Contiene la infraestructura como código
  (IaC), automatizaciones, pipelines, Terraform, configuración de
  entornos y todos los recursos necesarios para desplegar y gestionar
  los ambientes dev, test y main.  
  </span>
- <span class="c9">DevOps-Inventory-Service:</span><span class="c10 c9">  
  </span><span class="c5"> Servicio backend responsable de la lógica
  relacionada al inventario. Está desarrollado en Go.  
  </span>
- <span class="c9">DevOpsProduct-Service:</span><span class="c10 c9">  
  </span><span class="c5"> Microservicio backend encargado de la gestión
  de productos. Desarrollado en Python.  
  </span>
- <span class="c9">DevOpsFront</span><span class="c9">:</span><span class="c10 c9">  
  </span><span class="c5"> Repositorio del frontend de la aplicación.
  Contiene la UI.</span>

<span class="c5"></span>

<span class="c1"></span>

<span class="c1"></span>

1.  <span class="c1">Servicios Serverless</span>

<span class="c5">Se implementó una función Lambda que se integra en el
pipeline de CI/CD para notificar automáticamente cuando el pipeline
finaliza. Esta función envía alertas al canal de Discord configurado,
permitiendo al equipo recibir notificaciones en tiempo real sobre el
estado de la ejecución.</span>

<span class="c1">Resultado de las pruebas:</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 355.00px; height: 216.00px;"><img src="images/image4.png"
style="width: 355.00px; height: 216.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

1.  <span class="c1">Observabilidad – Dashboard y Alertas en
    CloudWatch</span>

<span class="c1"></span>

<span class="c5">Se implementó un dashboard en AWS CloudWatch que
permite monitorear métricas críticas del clúster EKS, asegurando
visibilidad sobre el estado y rendimiento de los recursos. El dashboard
incluye gráficos para:</span>

- <span class="c5">Uso de CPU y memoria de pods y nodos.  
  </span>
- <span class="c5">Estado de pods y nodos, incluyendo pods pendientes,
  nodos fallidos y pods en ejecución.  
  </span>
- <span class="c5">Rendimiento del API Server, con métricas de errores
  4XX/5XX y latencias P99.  
  </span>
- <span class="c5">Tráfico de red y almacenamiento, mostrando bytes
  transmitidos y recibidos.</span>

<span class="c5">Además se configuraron dos alertas críticas utilizando
CloudWatch Alarms y SNS, y para facilitar las pruebas, se definieron
thresholds muy bajos:</span>

1.  <span class="c5">Alerta de CPU alta: Se dispara cuando el uso
    promedio de CPU de los pods supera el 2%.  
    </span>
2.  <span class="c5">Alerta de memoria alta: Se dispara cuando el uso
    promedio de memoria de los pods supera el 2%.  
    </span>

<span class="c5">Estas alertas están suscritas a una función Lambda, que
envía notificaciones al canal de Discord, permitiendo al equipo recibir
avisos en tiempo real sobre condiciones relevantes en el clúster.</span>

<span class="c1">Pruebas:</span>

<span class="c1">Dashboard:</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 273.81px;"><img src="images/image12.png"
style="width: 624.00px; height: 273.81px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1">Alerta Cpu:</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 261.33px;"><img src="images/image5.png"
style="width: 601.70px; height: 261.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 458.00px; height: 81.00px;"><img src="images/image1.png"
style="width: 458.00px; height: 81.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1">Alerta Memoria :</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 202.67px;"><img src="images/image7.png"
style="width: 601.70px; height: 202.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 428.00px; height: 79.00px;"><img src="images/image14.png"
style="width: 428.00px; height: 79.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c17 c14"></span>

<span class="c8 c17"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

1.  <span class="c1">GitHub Actions:</span>

<span class="c5">Para automatizar todo el flujo de desarrollo y
despliegue de la aplicación, implementamos un sistema CI/CD completo
utilizando GitHub Actions. La solución está organizada con cuatro
pipelines principales, separados por CI y CD, tanto para el backend como
para el frontend.</span>

<span class="c12 c8">Pipelines de Integración Continua (CI)</span>

1.  <span class="c5">CI Backend  
    </span>

- <span class="c5">Ejecuta pruebas, validaciones y el build del
  backend.  
  </span>
- <span class="c5">Levanta un entorno de testing con Docker Compose para
  los microservicios Product e Inventory.  
  </span>
- <span class="c5">Corre pruebas funcionales con Newman (Postman).  
  </span>
- <span class="c5">Si todo pasa correctamente, construye las imágenes
  Docker y las publica en Amazon ECR según el entorno (main, dev o
  test).  
  </span>

1.  <span class="c5">CI Frontend  
    </span>

- <span class="c5">Clona el proyecto del frontend.  
  </span>
- <span class="c5">Corre análisis de calidad con SonarCloud.  
  </span>
- <span class="c5">Construye la imagen Docker del frontend y la publica
  en Amazon ECR diferenciada por entorno.  
  </span>

<span class="c5">Ambos CI se ejecutan automáticamente al hacer push a
las ramas:  
main, dev y test.</span>

<span class="c5"></span>

### <span class="c8 c12">Pipelines de Despliegue Continuo (CD)</span>

<span class="c5">Los pipelines de CD se ejecutan únicamente si su CI
correspondiente terminó exitosamente.</span>

1.  <span class="c5">CD Backend  
    </span>

- <span class="c5">Detecta automáticamente el entorno en el que debe
  desplegar (main, dev o test).  
  </span>
- <span class="c5">Configura AWS y se conecta al clúster EKS del
  entorno.  
  </span>
- <span class="c5">Reemplaza las variables necesarias en los manifests
  de Kubernetes.  
  </span>
- <span class="c5">Aplica los deployments de Redis, Postgres, Product
  Service e Inventory Service.  
  </span>
- <span class="c5">Envía una notificación mediante una Lambda indicando
  que el despliegue terminó correctamente.  
  </span>

1.  <span class="c5">CD Frontend  
    </span>

- <span class="c5">Funciona igual que el CD Backend, pero aplicando los
  manifests del frontend (API Gateway).  
  </span>
- <span class="c5">Notifica también al finalizar usando la Lambda del
  entorno.</span>

<span class="c5"></span>

<span class="c8 c9">Pruebas de Ejecución del
Pipeline</span><span class="c5">:</span>

<span class="c1"></span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 156.00px;"><img src="images/image16.png"
style="width: 601.70px; height: 156.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" /></span>

<span class="c1"></span>
