.class Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$1;
.super Ljava/lang/Object;
.source "AppTrayDropZonePresenter.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropTarget:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->access$300(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;

    move-result-object v0

    # invokes: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->enableDropZone()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->access$500(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;)V

    .line 180
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropTarget:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->access$300(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;

    move-result-object v0

    # invokes: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->disableDropZone()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->access$400(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;)V

    .line 174
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->access$200(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setVisible(Z)V

    .line 175
    return-void
.end method
