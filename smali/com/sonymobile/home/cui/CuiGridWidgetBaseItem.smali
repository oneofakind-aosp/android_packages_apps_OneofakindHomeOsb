.class public abstract Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
.super Lcom/sonymobile/home/data/WidgetItem;
.source "CuiGridWidgetBaseItem.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 41
    return-void
.end method


# virtual methods
.method public abstract getIconPackageName()Ljava/lang/String;
.end method

.method public abstract getIconResourceId()I
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method
