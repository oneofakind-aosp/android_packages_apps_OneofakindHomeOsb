.class Lcom/sonymobile/home/apptray/AppTrayView$1;
.super Ljava/lang/Object;
.source "AppTrayView.java"

# interfaces
.implements Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayView;->createBackgroundTouchArea(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayView$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayView;->notifyClick(FF)V
    invoke-static {v0, p3, p4}, Lcom/sonymobile/home/apptray/AppTrayView;->access$200(Lcom/sonymobile/home/apptray/AppTrayView;FF)V

    .line 159
    return-void
.end method

.method public onLongPress(FFFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayView;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayView;->notifyLongPress(FF)V
    invoke-static {v0, p3, p4}, Lcom/sonymobile/home/apptray/AppTrayView;->access$100(Lcom/sonymobile/home/apptray/AppTrayView;FF)V

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public onSecondaryClick(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F

    .prologue
    .line 163
    return-void
.end method
