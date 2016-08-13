.class Lcom/sonymobile/home/HomeApplication$2;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/HomeApplication;->customize(Lcom/sonymobile/home/HomeApplication$CustomizationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/HomeApplication;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/HomeApplication;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/sonymobile/home/HomeApplication$2;->this$0:Lcom/sonymobile/home/HomeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferencesLoaded(Lcom/sonymobile/home/configuration/HomePreferences;)V
    .locals 1
    .param p1, "preferences"    # Lcom/sonymobile/home/configuration/HomePreferences;

    .prologue
    .line 687
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/HomePreferences;->getRestoreCustomization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonymobile/home/HomeConfigStateHandler;->setEnabled(Z)V

    .line 691
    sget-object v0, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->ONGOING_CHANGE:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    invoke-static {v0}, Lcom/sonymobile/home/HomeConfigStateHandler;->setState(Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;)V

    .line 692
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/configuration/HomePreferences;->setRestoreCustomization(Z)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication$2;->this$0:Lcom/sonymobile/home/HomeApplication;

    # invokes: Lcom/sonymobile/home/HomeApplication;->doCustomizationIfNeeded()V
    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->access$100(Lcom/sonymobile/home/HomeApplication;)V

    .line 696
    return-void
.end method
