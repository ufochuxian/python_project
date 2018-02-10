.class final Lcom/jakewharton/rxbinding/b/ag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/b/ag;->a(Landroid/widget/SearchView;Z)Lrx/c/c;
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
.field final synthetic a:Landroid/widget/SearchView;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/widget/SearchView;Z)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/ag$1;->a:Landroid/widget/SearchView;

    iput-boolean p2, p0, Lcom/jakewharton/rxbinding/b/ag$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jakewharton/rxbinding/b/ag$1;->a:Landroid/widget/SearchView;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding/b/ag$1;->b:Z

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 61
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/ag$1;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
