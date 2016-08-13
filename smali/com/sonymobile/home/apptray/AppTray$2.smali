.class Lcom/sonymobile/home/apptray/AppTray$2;
.super Ljava/lang/Object;
.source "AppTray.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTray;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTray;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTray;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTray$2;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$2;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    # getter for: Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTray;->access$100(Lcom/sonymobile/home/apptray/AppTray;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setTouchEnabled(Z)V

    .line 465
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 460
    return-void
.end method
