.class Lcom/sonymobile/home/apptray/AppTray$3;
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
    .locals 1

    .prologue
    .line 468
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTray$3;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$3;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTray;->onStart()V

    .line 471
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$3;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTray;->onResume()V

    .line 484
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$3;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTray;->focusView()Z

    .line 485
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$3;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    # getter for: Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTray;->access$100(Lcom/sonymobile/home/apptray/AppTray;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->gotoDefaultPage()V

    .line 476
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$3;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    # getter for: Lcom/sonymobile/home/apptray/AppTray;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTray;->access$200(Lcom/sonymobile/home/apptray/AppTray;)Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray$3;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    # getter for: Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTray;->access$100(Lcom/sonymobile/home/apptray/AppTray;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    .line 477
    return-void
.end method
