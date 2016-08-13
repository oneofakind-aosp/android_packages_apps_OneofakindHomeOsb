.class Lcom/sonymobile/home/apptray/AppTrayPresenter$4;
.super Ljava/lang/Object;
.source "AppTrayPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter;->createOptionsButtonListener()Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V
    .locals 0

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$4;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .prologue
    .line 1939
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$4;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$6200(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/FragmentHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/home/FragmentHandler;->hasOpenDialog()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1940
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$4;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$6300(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/FragmentHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/home/FragmentHandler;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    .line 1941
    .local v0, "activityContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$4;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$400(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$4;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$4;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->isInNormalState()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->showOptionsMenu(Landroid/content/Context;Landroid/widget/PopupMenu$OnMenuItemClickListener;Z)V

    .line 1943
    .end local v0    # "activityContext":Landroid/content/Context;
    :cond_0
    return-void
.end method
