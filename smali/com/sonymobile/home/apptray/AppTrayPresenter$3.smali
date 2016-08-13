.class Lcom/sonymobile/home/apptray/AppTrayPresenter$3;
.super Ljava/lang/Object;
.source "AppTrayPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;


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
    .line 1921
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$3;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$3;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->onBackButtonPressed()Z

    .line 1925
    return-void
.end method
