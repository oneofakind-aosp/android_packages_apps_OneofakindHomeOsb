.class public abstract Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener$Adapter;
.super Ljava/lang/Object;
.source "ComponentListeners.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaChanged(Lcom/sonymobile/flix/components/Component;F)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "alpha"    # F

    .prologue
    .line 265
    return-void
.end method

.method public onIdChanged(Lcom/sonymobile/flix/components/Component;I)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "id"    # I

    .prologue
    .line 257
    return-void
.end method

.method public onNameChanged(Lcom/sonymobile/flix/components/Component;Ljava/lang/String;)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    return-void
.end method

.method public onOrderChanged(Lcom/sonymobile/flix/components/Component;F)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "order"    # F

    .prologue
    .line 261
    return-void
.end method

.method public onPropertyRemoved(Lcom/sonymobile/flix/components/Component;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 249
    return-void
.end method

.method public onPropertySet(Lcom/sonymobile/flix/components/Component;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 245
    return-void
.end method
