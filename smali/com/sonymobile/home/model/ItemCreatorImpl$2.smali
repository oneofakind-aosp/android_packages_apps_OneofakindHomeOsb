.class Lcom/sonymobile/home/model/ItemCreatorImpl$2;
.super Ljava/lang/Object;
.source "ItemCreatorImpl.java"

# interfaces
.implements Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;


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

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;

.field final synthetic val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/Item;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iput-object p2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvWidgetLoaded(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V
    .locals 5
    .param p1, "advWidget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .prologue
    .line 119
    new-instance v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getId()Ljava/util/UUID;

    move-result-object v4

    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$item:Lcom/sonymobile/home/data/Item;

    check-cast v1, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getCustomization()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sonymobile/home/data/AdvWidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/util/HashMap;)V

    .line 123
    .local v0, "newItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 124
    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
    invoke-static {v1, v2, v3, v0}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$000(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    .line 127
    return-void
.end method

.method public onAdvWidgetLoadingFailed(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    const v3, 0x7f080098

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyFailure(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$100(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V

    .line 133
    return-void
.end method

.method public onAdvWidgetLoadingFailedSilent(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$2;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    const/4 v3, 0x0

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyFailure(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$100(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V

    .line 140
    return-void
.end method
