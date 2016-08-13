.class Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$1;
.super Ljava/lang/Object;
.source "ViewWrappersRoot.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;


# direct methods
.method constructor <init>(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$1;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;

    .prologue
    .line 86
    if-nez p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$1;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->clearFocus()V

    .line 91
    :cond_0
    return-void
.end method
