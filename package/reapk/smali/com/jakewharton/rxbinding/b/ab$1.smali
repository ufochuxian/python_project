.class final Lcom/jakewharton/rxbinding/b/ab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/ab;->b(Landroid/widget/CompoundButton;)Lrx/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/ab$1;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ab$1;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 45
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/ab$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
