.class Lcom/sonymobile/home/desktop/Desktop$3;
.super Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;
.source "Desktop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop;->createAppTrayButton(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/flix/components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/Desktop;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p3, "x1"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$3;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0, p2, p3}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;-><init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    return-void
.end method


# virtual methods
.method public createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 10
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 322
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$3;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    invoke-virtual {v1}, Lcom/sonymobile/home/resources/ResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 323
    .local v9, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$3;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 324
    .local v3, "appTrayIcon":Landroid/graphics/Bitmap;
    const v1, 0x7f08006d

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "appTrayLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop$3;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/Desktop;->access$200(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getModel()Lcom/sonymobile/home/stage/StageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageModel;->getPageViewName()Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, "pageViewName":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v8}, Lcom/sonymobile/home/desktop/Desktop$3;->getItemViewTextLines(Ljava/lang/String;)I

    move-result v6

    move-object v1, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/presenter/view/IconLabelView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Landroid/graphics/Bitmap;Ljava/lang/String;ZILcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 328
    .local v0, "buttonView":Lcom/sonymobile/home/presenter/view/IconLabelView;
    const-string v1, "AppTrayButton"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setName(Ljava/lang/String;)V

    .line 329
    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setId(I)V

    .line 330
    const v1, 0x7f080056

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setContentDescription(Ljava/lang/String;)V

    .line 331
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setCameraProjection(I)V

    .line 332
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setAnimateClick(Z)V

    .line 333
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/home/desktop/Desktop$3;->updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 334
    return-object v0
.end method

.method public updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 2
    .param p1, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-super {p0, p1}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V

    .line 341
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$3;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$800(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/presenter/view/IconLabelView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$3;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$800(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/presenter/view/IconLabelView;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/sonymobile/home/desktop/Desktop$3;->updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 344
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$3;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # invokes: Lcom/sonymobile/home/desktop/Desktop;->layoutAppTrayButton()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$900(Lcom/sonymobile/home/desktop/Desktop;)V

    .line 346
    :cond_0
    return-void
.end method

.method public updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 3
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 350
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    .line 351
    .local v0, "iconLabelView":Lcom/sonymobile/home/presenter/view/IconLabelView;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop$3;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/Desktop;->access$200(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/stage/Stage;->getModel()Lcom/sonymobile/home/stage/StageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/stage/StageModel;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "pageViewName":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/home/desktop/Desktop$3;->updateViewParameters(Ljava/lang/String;Lcom/sonymobile/home/presenter/view/IconLabelView;)V

    .line 353
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/Desktop$3;->getItemViewTextLines(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setNumberOfTextLines(I)V

    .line 354
    return-void
.end method
