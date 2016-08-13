.class Lcom/sonymobile/home/desktop/DesktopModel$2;
.super Ljava/lang/Object;
.source "DesktopModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/RemoveSyncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$2;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDuringSync(Lcom/sonymobile/home/data/Item;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 193
    const-string v1, "com.android.stk"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 199
    .local v0, "itemRemoved":Z
    :goto_0
    return v0

    .line 197
    .end local v0    # "itemRemoved":Z
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$2;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .restart local v0    # "itemRemoved":Z
    goto :goto_0
.end method
