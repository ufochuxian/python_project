.class final Lcom/jakewharton/rxbinding/b/ai$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/ai;->b(Landroid/widget/TextSwitcher;)Lrx/c/c;
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
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextSwitcher;


# direct methods
.method constructor <init>(Landroid/widget/TextSwitcher;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/ai$2;->a:Landroid/widget/TextSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "textRes"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ai$2;->a:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/ai$2;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
