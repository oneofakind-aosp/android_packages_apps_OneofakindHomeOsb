.class Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTraySortModeDialogActionListener;
.super Ljava/lang/Object;
.source "AppTrayPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppTraySortModeDialogActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V
    .locals 0

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTraySortModeDialogActionListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .param p2, "x1"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$1;

    .prologue
    .line 1247
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTraySortModeDialogActionListener;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V

    return-void
.end method


# virtual methods
.method public onDialogActionPerformed(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 1251
    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->SET_SORT_MODE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1252
    if-eqz p2, :cond_0

    .line 1253
    const-string v2, "selectedRadioButtonIndex"

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1255
    .local v0, "index":I
    if-eq v0, v3, :cond_0

    .line 1256
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTraySortModeDialogActionListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$5300(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->convertIndexToSortMode(ILandroid/content/Context;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v1

    .line 1258
    .local v1, "sortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTraySortModeDialogActionListener;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->handleSortModeItemClicked(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V
    invoke-static {v2, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$5400(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V

    .line 1262
    .end local v0    # "index":I
    .end local v1    # "sortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :cond_0
    return-void
.end method
