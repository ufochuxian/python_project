.class final Lcom/jakewharton/rxbinding/b/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<",
        "Lcom/jakewharton/rxbinding/b/ay;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-",
            "Lcom/jakewharton/rxbinding/b/ay;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lrx/c/p;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lrx/c/p",
            "<-",
            "Lcom/jakewharton/rxbinding/b/ay;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "handled":Lrx/c/p;, "Lrx/c/p<-Lcom/jakewharton/rxbinding/b/ay;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/az;->a:Landroid/widget/TextView;

    .line 20
    iput-object p2, p0, Lcom/jakewharton/rxbinding/b/az;->b:Lrx/c/p;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lcom/jakewharton/rxbinding/b/ay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Lcom/jakewharton/rxbinding/b/ay;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 26
    new-instance v0, Lcom/jakewharton/rxbinding/b/az$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/az$1;-><init>(Lcom/jakewharton/rxbinding/b/az;Lrx/l;)V

    .line 38
    .local v0, "listener":Landroid/widget/TextView$OnEditorActionListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/az;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 40
    new-instance v1, Lcom/jakewharton/rxbinding/b/az$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/az$2;-><init>(Lcom/jakewharton/rxbinding/b/az;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 45
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/az;->a(Lrx/l;)V

    return-void
.end method