FROM solr:5.3

MAINTAINER  istern

ENV SOLR_PATH /opt/solr/server/solr

COPY resources/schema.xml $SOLR_PATH/configsets/basic_configs/conf 

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_core_index 
RUN echo name=sitecore_core_index > $SOLR_PATH/sitecore_core_index/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_master_index
RUN echo name=sitecore_master_index > $SOLR_PATH/sitecore_master_index/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_web_index
RUN echo name=sitecore_web_index > $SOLR_PATH/sitecore_web_index/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_fxm_master_index
RUN echo name=sitecore_fxm_master_index > $SOLR_PATH/sitecore_fxm_master_index/core.properties 

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_fxm_web_index
RUN echo name=sitecore_fxm_web_index > $SOLR_PATH/sitecore_fxm_web_index/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_list_index
RUN echo name=sitecore_list_index > $SOLR_PATH/sitecore_list_index/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_marketing_asset_index_master
RUN echo name=sitecore_marketing_asset_index_master > $SOLR_PATH/sitecore_marketing_asset_index_master/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_marketing_asset_index_web
RUN echo name=sitecore_marketing_asset_index_web > $SOLR_PATH/sitecore_marketing_asset_index_web/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_marketingdefinitions_master
RUN echo name=sitecore_marketingdefinitions_master> $SOLR_PATH//sitecore_marketingdefinitions_master/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_marketingdefinitions_web
RUN echo name=sitecore_marketingdefinitions_web > $SOLR_PATH/sitecore_marketingdefinitions_web/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_suggested_test_index
RUN echo name=sitecore_suggested_test_index > $SOLR_PATH/sitecore_suggested_test_index/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/sitecore_testing_index
RUN echo name=sitecore_testing_index > $SOLR_PATH/sitecore_testing_index/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/social_messages_master
RUN echo name=social_messages_master > $SOLR_PATH/social_messages_master/core.properties

RUN cp -r $SOLR_PATH/configsets/basic_configs/ $SOLR_PATH/social_messages_web
RUN echo name=social_messages_web > $SOLR_PATH/social_messages_web/core.properties 
