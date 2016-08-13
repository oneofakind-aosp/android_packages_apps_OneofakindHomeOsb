.class public Lcom/sonymobile/flix/debug/FlixUsageWarnings;
.super Ljava/lang/Object;
.source "FlixUsageWarnings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/debug/FlixUsageWarnings$PlatformWarnings;,
        Lcom/sonymobile/flix/debug/FlixUsageWarnings$ViewWrapperWarnings;,
        Lcom/sonymobile/flix/debug/FlixUsageWarnings$LayouterWarnings;,
        Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;,
        Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;
    }
.end annotation


# static fields
.field static sEnabled:Z

.field static sNotifyOnlyOnce:Z

.field static sPenaltyDeath:Z

.field static sPenaltyLog:Z

.field static sPenaltyLogInterval:I

.field static sPenaltyLogLastTime:J

.field static sPenaltyToast:Z

.field static sPenaltyToastInterval:I

.field static sPenaltyToastLastTime:J

.field static sShowAncestors:Z

.field static sStackTraceLength:I

.field static sWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    const/16 v2, 0xfa0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    sput-boolean v1, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    .line 49
    sput-boolean v1, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyLog:Z

    .line 51
    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyToast:Z

    .line 53
    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyDeath:Z

    .line 55
    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    .line 57
    sput-boolean v1, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sShowAncestors:Z

    .line 59
    const/16 v0, 0xc

    sput v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sStackTraceLength:I

    .line 61
    sput v2, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyLogInterval:I

    .line 63
    sput-wide v4, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyLogLastTime:J

    .line 65
    sput v2, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyToastInterval:I

    .line 67
    sput-wide v4, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyToastLastTime:J

    return-void
.end method

.method protected static getAncestryTree(Lcom/sonymobile/flix/components/Component;)Ljava/lang/String;
    .locals 9
    .param p0, "c"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/16 v8, 0xa

    .line 224
    sget-boolean v6, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sShowAncestors:Z

    if-eqz v6, :cond_3

    .line 225
    move-object v2, p0

    .line 226
    .local v2, "component":Lcom/sonymobile/flix/components/Component;
    const/4 v5, 0x0

    .line 227
    .local v5, "nbrAncestors":I
    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    .line 228
    .local v3, "current":Lcom/sonymobile/flix/components/Component;
    :goto_0
    if-eqz v3, :cond_0

    .line 229
    add-int/lit8 v5, v5, 0x1

    .line 230
    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Component;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    goto :goto_0

    .line 233
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Component: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    .line 235
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 236
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_1

    .line 237
    const-string v6, "  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 239
    :cond_1
    const-string v6, "             "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Component;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 245
    .end local v0    # "a":I
    .end local v2    # "component":Lcom/sonymobile/flix/components/Component;
    .end local v3    # "current":Lcom/sonymobile/flix/components/Component;
    .end local v5    # "nbrAncestors":I
    :goto_3
    return-object v6

    .line 244
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Component: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 82
    sput-boolean p0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    .line 83
    return-void
.end method

.method public static setPenaltyToast(ZILandroid/content/Context;)V
    .locals 1
    .param p0, "penaltyToast"    # Z
    .param p1, "toastInterval"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    sput-boolean p0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyToast:Z

    .line 121
    sput p1, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyToastInterval:I

    .line 123
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    sput-object v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sWeakContext:Ljava/lang/ref/WeakReference;

    .line 125
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 18
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 185
    new-instance v13, Ljava/lang/Throwable;

    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    .line 186
    .local v11, "ste":[Ljava/lang/StackTraceElement;
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "className":Ljava/lang/String;
    const/16 v13, 0x2e

    invoke-virtual {v2, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 188
    .local v4, "dot":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_0

    .line 189
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    :cond_0
    const/16 v13, 0x24

    const/16 v14, 0x2e

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 192
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "methodName":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 195
    .local v8, "now":J
    sget-boolean v13, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyLog:Z

    if-eqz v13, :cond_3

    sget-wide v14, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyLogLastTime:J

    sget v13, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyLogInterval:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    cmp-long v13, v8, v14

    if-lez v13, :cond_3

    .line 196
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Usage warning: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sonymobile/flix/debug/Logx$Short;->d(Ljava/lang/String;)V

    .line 197
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    const-string v15, "\n    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sonymobile/flix/debug/Logx$Short;->d(Ljava/lang/String;)V

    .line 199
    sget v13, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sStackTraceLength:I

    if-gez v13, :cond_1

    array-length v7, v11

    .line 201
    .local v7, "nbrLines":I
    :goto_0
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_2

    .line 202
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v11, v5

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sonymobile/flix/debug/Logx$Short;->d(Ljava/lang/String;)V

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 199
    .end local v5    # "i":I
    .end local v7    # "nbrLines":I
    :cond_1
    sget v13, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sStackTraceLength:I

    add-int/lit8 v13, v13, 0x2

    array-length v14, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_0

    .line 204
    .restart local v5    # "i":I
    .restart local v7    # "nbrLines":I
    :cond_2
    invoke-static {}, Lcom/sonymobile/flix/debug/Logx$Short;->d()V

    .line 205
    sput-wide v8, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyLogLastTime:J

    .line 207
    .end local v5    # "i":I
    .end local v7    # "nbrLines":I
    :cond_3
    sget-boolean v13, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyToast:Z

    if-eqz v13, :cond_4

    sget-wide v14, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyToastLastTime:J

    sget v13, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyToastInterval:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    cmp-long v13, v8, v14

    if-lez v13, :cond_4

    .line 208
    sget-object v13, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sWeakContext:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_5

    sget-object v13, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    move-object v3, v13

    .line 209
    .local v3, "context":Landroid/content/Context;
    :goto_2
    if-eqz v3, :cond_4

    .line 210
    const/16 v13, 0x2e

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, "shortClassName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Usage warning: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, "warn":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-static {v3, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 213
    sput-wide v8, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyToastLastTime:J

    .line 216
    .end local v3    # "context":Landroid/content/Context;
    .end local v10    # "shortClassName":Ljava/lang/String;
    .end local v12    # "warn":Ljava/lang/String;
    :cond_4
    sget-boolean v13, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sPenaltyDeath:Z

    if-eqz v13, :cond_6

    .line 217
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Usage warning: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 208
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 221
    :cond_6
    return-void
.end method
