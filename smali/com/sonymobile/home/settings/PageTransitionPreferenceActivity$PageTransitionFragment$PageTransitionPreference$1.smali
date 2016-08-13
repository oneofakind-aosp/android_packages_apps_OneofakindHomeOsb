.class Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference$1;
.super Ljava/lang/Object;
.source "PageTransitionPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference$1;->this$0:Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference$1;->this$0:Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;

    iget-object v1, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference$1;->this$0:Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;

    # getter for: Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mChecked:Z
    invoke-static {v1}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->access$100(Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;)Z

    move-result v1

    # invokes: Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->updatePreviewAnimation(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->access$200(Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;Z)V

    .line 165
    return-void
.end method
