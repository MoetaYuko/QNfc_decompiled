.class final Lcom/android/nfc/NfcService$DtaHelperService;
.super Landroid/nfc/dta/IDtaHelper$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DtaHelperService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/dta/IDtaHelper$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dta_get_pattern_number()I
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1053
    iget-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->dta_get_pattern_number()I

    move-result v0

    return v0
.end method

.method public dta_set_pattern_number(I)V
    .locals 4
    .param p1, "pattern"    # I

    .prologue
    .line 1035
    monitor-enter p0

    .line 1036
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1037
    const-string v2, "NfcService"

    const-string v3, "dta_set_pattern_number"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const-string v2, "sys.dtapattern"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1039
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->disableDiscovery()Z

    move-result v3

    # setter for: Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z
    invoke-static {v2, v3}, Lcom/android/nfc/NfcService;->access$702(Lcom/android/nfc/NfcService;Z)Z

    .line 1040
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/nfc/DeviceHost;->dta_set_pattern_number(I)V

    .line 1042
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Z

    move-result v1

    .line 1043
    .local v1, "shouldRestart":Z
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mScreenState:I

    # invokes: Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    invoke-static {v2, v3}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    .line 1044
    .local v0, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    move-result v3

    # setter for: Lcom/android/nfc/NfcService;->mDiscoveryEnabled:Z
    invoke-static {v2, v3}, Lcom/android/nfc/NfcService;->access$702(Lcom/android/nfc/NfcService;Z)Z

    .line 1046
    monitor-exit p0

    .line 1048
    return-void

    .line 1046
    .end local v0    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    .end local v1    # "shouldRestart":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public get_text_from_ndef(Landroid/nfc/NdefMessage;)Ljava/lang/String;
    .locals 9
    .param p1, "ndefMessage"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v6, 0x0

    .line 1083
    iget-object v7, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1085
    :try_start_0
    const-string v7, "NfcService"

    const-string v8, "getTextFromNdef"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v3, v7, v8

    .line 1089
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    sget-object v8, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v4, v6

    .line 1099
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :goto_0
    return-object v4

    .line 1093
    .restart local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    .line 1094
    .local v2, "payload":[B
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_2

    const-string v5, "UTF-8"

    .line 1095
    .local v5, "textEncoding":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    and-int/lit8 v1, v7, 0x3f

    .line 1096
    .local v1, "languageCodeLength":I
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    array-length v8, v2

    sub-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v4, v2, v7, v8, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1097
    .local v4, "text":Ljava/lang/String;
    goto :goto_0

    .line 1094
    .end local v1    # "languageCodeLength":I
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "textEncoding":Ljava/lang/String;
    :cond_2
    const-string v5, "UTF-16"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1098
    .end local v2    # "payload":[B
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v4, v6

    .line 1099
    goto :goto_0
.end method

.method public in_dta_mode()Z
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->dta_get_pattern_number()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nfcDeactivate(I)Z
    .locals 11
    .param p1, "deactivationType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1006
    iget-object v8, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, v8, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1008
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NfcAdapterService::nfcDeactivate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v8, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/android/nfc/DeviceHost;->nfcDeactivate(I)Z

    move-result v6

    .line 1016
    .local v6, "ret":Z
    monitor-enter p0

    .line 1017
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, v8, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 1018
    .local v4, "objectValues":[Ljava/lang/Object;
    array-length v8, v4

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 1019
    .local v5, "objectsToDeactivate":[Ljava/lang/Object;
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DTA] number of objects in objectmap:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1022
    .local v3, "o":Ljava/lang/Object;
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DTA] NfcAdapterService::nfcDeactivate: found object:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    instance-of v8, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v8, :cond_0

    .line 1024
    const-string v8, "NfcService"

    const-string v9, "[DTA] NfcAdapterService::nfcDeactivate: set TagEndPoint presence to false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v3

    .line 1025
    check-cast v7, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1026
    .local v7, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/nfc/DeviceHost$TagEndpoint;->setIsPresent(Z)V

    .line 1021
    .end local v7    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1020
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "objectValues":[Ljava/lang/Object;
    .end local v5    # "objectsToDeactivate":[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1030
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "objectValues":[Ljava/lang/Object;
    .restart local v5    # "objectsToDeactivate":[Ljava/lang/Object;
    :cond_1
    return v6
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1061
    new-instance v0, Lcom/android/nfc/NfcService$DtaHelperService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$DtaHelperService$1;-><init>(Lcom/android/nfc/NfcService$DtaHelperService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$DtaHelperService$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1075
    return-void
.end method

.method public snep_client_close(I)V
    .locals 6
    .param p1, "handle"    # I

    .prologue
    .line 1160
    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1161
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 1162
    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/snep/SnepClient;

    .line 1163
    .local v2, "snepClient":Lcom/android/nfc/snep/SnepClient;
    if-eqz v2, :cond_0

    .line 1164
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 1165
    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    .end local v2    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :goto_0
    return-void

    .line 1167
    .restart local v2    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :cond_0
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "snep_client_close: handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1170
    .end local v2    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1171
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/nfc/snep/SnepClient;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/snep/SnepClient;

    .line 1172
    .restart local v2    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepClient;->close()V

    goto :goto_1

    .line 1174
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/nfc/snep/SnepClient;>;"
    .end local v2    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public snep_client_connect(I)Z
    .locals 5
    .param p1, "handle"    # I

    .prologue
    .line 1112
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1113
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/snep/SnepClient;

    .line 1114
    .local v1, "snepClient":Lcom/android/nfc/snep/SnepClient;
    if-eqz v1, :cond_0

    .line 1116
    :try_start_0
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepClient;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    const/4 v2, 0x1

    .line 1124
    :goto_0
    return v2

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snep_client_connect failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1122
    :cond_0
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snep_client_connect: handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public snep_client_create(Ljava/lang/String;)I
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 1103
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1104
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # operator++ for: Lcom/android/nfc/NfcService;->mSnepClientHandleCounter:I
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$908(Lcom/android/nfc/NfcService;)I

    .line 1105
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepClientHandleCounter:I
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)I

    move-result v0

    .line 1106
    .local v0, "clientHandle":I
    new-instance v1, Lcom/android/nfc/snep/SnepClient;

    invoke-direct {v1, p1}, Lcom/android/nfc/snep/SnepClient;-><init>(Ljava/lang/String;)V

    .line 1107
    .local v1, "snepClient":Lcom/android/nfc/snep/SnepClient;
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    return v0
.end method

.method public snep_client_get(ILandroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 7
    .param p1, "handle"    # I
    .param p2, "ndefMessage"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v3, 0x0

    .line 1144
    iget-object v4, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1145
    iget-object v4, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/snep/SnepClient;

    .line 1146
    .local v1, "snepClient":Lcom/android/nfc/snep/SnepClient;
    if-eqz v1, :cond_1

    .line 1148
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    .line 1149
    .local v2, "snepMessage":Lcom/android/nfc/snep/SnepMessage;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1156
    .end local v2    # "snepMessage":Lcom/android/nfc/snep/SnepMessage;
    :cond_0
    :goto_0
    return-object v3

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1154
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "snep_client_get: handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public snep_client_put(ILandroid/nfc/NdefMessage;)Z
    .locals 5
    .param p1, "handle"    # I
    .param p2, "ndefMessage"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1128
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1129
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/snep/SnepClient;

    .line 1130
    .local v1, "snepClient":Lcom/android/nfc/snep/SnepClient;
    if-eqz v1, :cond_0

    .line 1132
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    const/4 v2, 0x1

    .line 1140
    :goto_0
    return v2

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snep_client_put failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1138
    :cond_0
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snep_client_put: handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public snep_server_close(I)V
    .locals 6
    .param p1, "handle"    # I

    .prologue
    .line 1265
    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1266
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 1267
    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepServers:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/snep/SnepServer;

    .line 1268
    .local v2, "snepServer":Lcom/android/nfc/snep/SnepServer;
    if-eqz v2, :cond_0

    .line 1269
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepServer;->stop()V

    .line 1270
    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepServers:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    .end local v2    # "snepServer":Lcom/android/nfc/snep/SnepServer;
    :goto_0
    return-void

    .line 1272
    .restart local v2    # "snepServer":Lcom/android/nfc/snep/SnepServer;
    :cond_0
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "snep_server_close: handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1275
    .end local v2    # "snepServer":Lcom/android/nfc/snep/SnepServer;
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepServers:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1276
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/nfc/snep/SnepServer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/snep/SnepServer;

    .line 1277
    .restart local v2    # "snepServer":Lcom/android/nfc/snep/SnepServer;
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepServer;->stop()V

    goto :goto_1

    .line 1279
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/nfc/snep/SnepServer;>;"
    .end local v2    # "snepServer":Lcom/android/nfc/snep/SnepServer;
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepServers:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public snep_server_create(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "enableExtendedDTAServer"    # Z

    .prologue
    .line 1180
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1181
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snep_server_create: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enableExtendedDTAServer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # operator++ for: Lcom/android/nfc/NfcService;->mSnepServerHandleCounter:I
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1108(Lcom/android/nfc/NfcService;)I

    .line 1183
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepServerHandleCounter:I
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)I

    move-result v0

    .line 1184
    .local v0, "serverHandle":I
    new-instance v1, Lcom/android/nfc/snep/SnepServer;

    const/4 v2, 0x4

    new-instance v3, Lcom/android/nfc/NfcService$DtaHelperService$2;

    invoke-direct {v3, p0, p2}, Lcom/android/nfc/NfcService$DtaHelperService$2;-><init>(Lcom/android/nfc/NfcService$DtaHelperService;Z)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/nfc/snep/SnepServer;-><init>(Ljava/lang/String;ILcom/android/nfc/snep/SnepServer$Callback;)V

    .line 1248
    .local v1, "snepServer":Lcom/android/nfc/snep/SnepServer;
    if-eqz v1, :cond_1

    .line 1249
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepServer;->start()V

    .line 1250
    iget-object v2, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSnepServers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    if-eqz p2, :cond_0

    .line 1254
    const-string v2, "Extended DTA SNEP server started"

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService$DtaHelperService;->showToast(Ljava/lang/String;)V

    .line 1260
    .end local v0    # "serverHandle":I
    :goto_0
    return v0

    .line 1256
    .restart local v0    # "serverHandle":I
    :cond_0
    const-string v2, "NFC Forum Default SNEP server started"

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService$DtaHelperService;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1260
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public startLlcpClEchoServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceNameIn"    # Ljava/lang/String;
    .param p2, "serviceNameOut"    # Ljava/lang/String;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/P2pLinkManager;->startLlcpClEchoServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    return-void
.end method

.method public startLlcpCoEchoServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceNameIn"    # Ljava/lang/String;
    .param p2, "serviceNameOut"    # Ljava/lang/String;

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1296
    iget-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/P2pLinkManager;->startLlcpCoEchoServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    return-void
.end method

.method public stopLlcpClEchoServer()V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->stopLlcpClEchoServer()V

    .line 1322
    return-void
.end method

.method public stopLlcpCoEchoServer()V
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1304
    iget-object v0, p0, Lcom/android/nfc/NfcService$DtaHelperService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->stopLlcpCoEchoServer()V

    .line 1305
    return-void
.end method
