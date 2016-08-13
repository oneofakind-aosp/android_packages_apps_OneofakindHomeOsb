.class public Lcom/sonymobile/home/configuration/ConfigExceptionHandler;
.super Ljava/lang/Object;
.source "ConfigExceptionHandler.java"


# direct methods
.method private static varargs buildExceptionDescription(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "contextPattern"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "elements"    # [Ljava/lang/Object;

    .prologue
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v2, "exceptionDescription":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 35
    .local v1, "element":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "element":Ljava/lang/Object;
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/home/util/HomeDebug;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static varargs trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v1, "json_config"

    invoke-static {v1, p0, p2}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->buildExceptionDescription(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "exceptionDescription":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Lcom/sonymobile/home/configuration/ConfigException;

    invoke-direct {v1, v0}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs trackException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "elements"    # [Ljava/lang/Object;

    .prologue
    .line 67
    const-string v1, "json_config"

    invoke-static {v1, p0, p2}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->buildExceptionDescription(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "exceptionDescription":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method
