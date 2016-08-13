.class Lcom/sonymobile/home/desktop/DesktopPresenter$12;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/storage/OnWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;->onUncaughtException(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V
    .locals 0

    .prologue
    .line 3100
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$12;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCompleted()V
    .locals 2

    .prologue
    .line 3109
    new-instance v0, Lcom/sonymobile/home/ui/widget/AdvWidgetException;

    const-string v1, "AdvWidget"

    invoke-direct {v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
