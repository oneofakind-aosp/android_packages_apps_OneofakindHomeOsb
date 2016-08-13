.class Lcom/sonymobile/home/model/ItemCreatorImpl$3;
.super Ljava/lang/Object;
.source "ItemCreatorImpl.java"

# interfaces
.implements Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ItemCreatorImpl;->create(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;

.field final synthetic val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/data/Item;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iput-object p2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$className:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$user:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$handler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppWidgetRegistered(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "cmp"    # Landroid/content/ComponentName;
    .param p2, "id"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/sonymobile/home/data/WidgetItem;

    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$className:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$user:Landroid/os/UserHandle;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 173
    .local v0, "newItem":Lcom/sonymobile/home/data/WidgetItem;
    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/WidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 174
    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/WidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
    invoke-static {v1, v2, v3, v0}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$000(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    .line 177
    return-void
.end method

.method public onAppWidgetRegistrationFailed(Z)V
    .locals 4
    .param p1, "userInterrupted"    # Z

    .prologue
    .line 181
    const v0, 0x7f08009a

    .line 183
    .local v0, "resourceId":I
    if-eqz p1, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$3;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyFailure(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V
    invoke-static {v1, v2, v3, v0}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$100(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V

    .line 187
    return-void
.end method
