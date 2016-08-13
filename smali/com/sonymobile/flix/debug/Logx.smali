.class public Lcom/sonymobile/flix/debug/Logx;
.super Ljava/lang/Object;
.source "Logx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/debug/Logx$Short;
    }
.end annotation


# static fields
.field static sClickable:Z

.field static sFastLogging:Z

.field static sLogTag:Ljava/lang/String;

.field static sLoggingEnabled:Z

.field static sPrefix:Ljava/lang/String;

.field static sShowMethodName:Z

.field static sShowThreadName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 32
    invoke-static {v1}, Lcom/sonymobile/flix/debug/Logx;->setLoggingEnabled(Z)V

    .line 33
    const-class v0, Lcom/sonymobile/flix/debug/Logx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/flix/debug/Logx;->setLogTag(Ljava/lang/String;)V

    .line 34
    const-string v0, "###"

    invoke-static {v0}, Lcom/sonymobile/flix/debug/Logx;->setPrefix(Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Lcom/sonymobile/flix/debug/Logx;->setShowThreadName(Z)V

    .line 36
    invoke-static {v1}, Lcom/sonymobile/flix/debug/Logx;->setShowMethodName(Z)V

    .line 37
    invoke-static {v2}, Lcom/sonymobile/flix/debug/Logx;->setClickable(Z)V

    .line 38
    invoke-static {v2}, Lcom/sonymobile/flix/debug/Logx;->setFastLogging(Z)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 289
    sget-boolean v0, Lcom/sonymobile/flix/debug/Logx;->sLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/sonymobile/flix/debug/Logx;->sLogTag:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/sonymobile/flix/debug/Logx;->formatMessage(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-boolean v0, Lcom/sonymobile/flix/debug/Logx;->sLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/sonymobile/flix/debug/Logx;->sLogTag:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/sonymobile/flix/debug/Logx;->formatMessage(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    return-void
.end method

.method static formatMessage(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "stackDepth"    # I
    .param p2, "longFormat"    # Z

    .prologue
    const/4 v6, 0x0

    .line 97
    sget-boolean v7, Lcom/sonymobile/flix/debug/Logx;->sFastLogging:Z

    if-eqz v7, :cond_0

    .line 138
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 101
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "buf":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/sonymobile/flix/debug/Logx;->sPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 103
    sget-object v7, Lcom/sonymobile/flix/debug/Logx;->sPrefix:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v7, "\n"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sonymobile/flix/debug/Logx;->sPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 106
    :cond_1
    if-eqz p2, :cond_a

    .line 107
    const/4 v5, 0x0

    .line 108
    .local v5, "ste":Ljava/lang/StackTraceElement;
    sget-boolean v7, Lcom/sonymobile/flix/debug/Logx;->sShowMethodName:Z

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/sonymobile/flix/debug/Logx;->sClickable:Z

    if-eqz v7, :cond_9

    :cond_2
    const/4 v3, 0x1

    .line 109
    .local v3, "needsStackTrace":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 110
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v5, v7, p1

    .line 112
    :cond_3
    if-nez v3, :cond_4

    sget-boolean v7, Lcom/sonymobile/flix/debug/Logx;->sShowThreadName:Z

    if-eqz v7, :cond_a

    .line 113
    :cond_4
    sget-boolean v7, Lcom/sonymobile/flix/debug/Logx;->sShowThreadName:Z

    if-eqz v7, :cond_5

    .line 114
    const-string v7, "["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_5
    sget-boolean v7, Lcom/sonymobile/flix/debug/Logx;->sShowMethodName:Z

    if-eqz v7, :cond_6

    .line 117
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "className":Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .end local v1    # "className":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 122
    .local v2, "endIndex":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_7

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 125
    :cond_7
    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    sget-boolean v7, Lcom/sonymobile/flix/debug/Logx;->sClickable:Z

    if-eqz v7, :cond_8

    .line 128
    const/4 v7, 0x4

    const-string v8, "                                                                                                                                                              "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 129
    .local v4, "numSpaces":I
    const-string v7, "                                                                                                                                                              "

    invoke-virtual {v0, v7, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .end local v4    # "numSpaces":I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .end local v2    # "endIndex":I
    .end local v3    # "needsStackTrace":Z
    :cond_9
    move v3, v6

    .line 108
    goto/16 :goto_1

    .line 138
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    :cond_a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static setClickable(Z)V
    .locals 0
    .param p0, "show"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/sonymobile/flix/debug/Logx;->sClickable:Z

    .line 67
    return-void
.end method

.method public static setFastLogging(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lcom/sonymobile/flix/debug/Logx;->sFastLogging:Z

    .line 55
    return-void
.end method

.method public static setLogTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "logTag"    # Ljava/lang/String;

    .prologue
    .line 46
    sput-object p0, Lcom/sonymobile/flix/debug/Logx;->sLogTag:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lcom/sonymobile/flix/debug/Logx;->sLoggingEnabled:Z

    .line 43
    return-void
.end method

.method public static setPrefix(Ljava/lang/String;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 50
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/sonymobile/flix/debug/Logx;->sPrefix:Ljava/lang/String;

    .line 51
    return-void

    .line 50
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static setShowMethodName(Z)V
    .locals 0
    .param p0, "show"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/sonymobile/flix/debug/Logx;->sShowMethodName:Z

    .line 63
    return-void
.end method

.method public static setShowThreadName(Z)V
    .locals 0
    .param p0, "show"    # Z

    .prologue
    .line 58
    sput-boolean p0, Lcom/sonymobile/flix/debug/Logx;->sShowThreadName:Z

    .line 59
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-boolean v0, Lcom/sonymobile/flix/debug/Logx;->sLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/sonymobile/flix/debug/Logx;->sLogTag:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/sonymobile/flix/debug/Logx;->formatMessage(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    return-void
.end method
