.class final Lcom/jakewharton/rxbinding/b/ae$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/ae;->b(Landroid/widget/RadioGroup;)Lrx/c/c;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Landroid/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/ae$1;->a:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ae$1;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ae$1;->a:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/ae$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
