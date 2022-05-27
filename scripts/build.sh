source ./scripts/_colors.sh;
source ./scripts/_header.sh;
echo "--------"
echo "${GREEN}Bootstrapping...${NC}"
yarn bootstrap;
echo "--------"
echo "${GREEN}Building components...${NC}"
yarn workspace @jsgurucompany/jsg-components build;
echo "--------"
echo "${GREEN}Building React package...${NC}"
yarn workspace @jsgurucompany/jsg-components-react build;
echo "--------"
echo "${GREEN}Building Vue package...${NC}"
yarn workspace @jsgurucompany/jsg-components-vue build;
echo "--------"
echo "${GREEN}Processing Angular proxies...${NC}"
yarn workspace @jsgurucompany/jsg-components process-angular-proxies;
echo "--------"
echo "${GREEN}Building Angular package...${NC}"
yarn workspace @jsgurucompany/jsg-components-angular build;
