.class Lcom/sonymobile/home/apptray/AppTrayModel$4;
.super Landroid/os/AsyncTask;
.source "AppTrayModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayModel;->storePreferencesAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel$4;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayModel$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$4;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->storePreferences()V

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method
