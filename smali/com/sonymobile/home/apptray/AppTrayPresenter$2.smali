.class Lcom/sonymobile/home/apptray/AppTrayPresenter$2;
.super Lcom/sonymobile/flix/components/ButtonListener$Adapter;
.source "AppTrayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter;->createActionBarView()V
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
    .line 1908
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$2;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-direct {p0}, Lcom/sonymobile/flix/components/ButtonListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 2
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$2;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$5900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/FragmentHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/FragmentHandler;->hasOpenDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$2;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->startAppSearch()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$6000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V

    .line 1914
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$2;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    const-string v1, "SearchButtonAppTray"

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->trackSearchStarted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$6100(Lcom/sonymobile/home/apptray/AppTrayPresenter;Ljava/lang/String;)V

    .line 1916
    :cond_0
    return-void
.end method
