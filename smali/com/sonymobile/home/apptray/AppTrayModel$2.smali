.class Lcom/sonymobile/home/apptray/AppTrayModel$2;
.super Ljava/lang/Object;
.source "AppTrayModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/RemoveSyncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel$2;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDuringSync(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$2;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayModel;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    return v0
.end method
