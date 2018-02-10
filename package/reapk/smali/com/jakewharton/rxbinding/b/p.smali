.class final Lcom/jakewharton/rxbinding/b/p;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/CompoundButton;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/p;->a:Landroid/widget/CompoundButton;

    .line 15
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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/b/p$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/p$1;-><init>(Lcom/jakewharton/rxbinding/b/p;Lrx/l;)V

    .line 27
    .local v0, "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/p;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 29
    new-instance v1, Lcom/jakewharton/rxbinding/b/p$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/p$2;-><init>(Lcom/jakewharton/rxbinding/b/p;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 36
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/p;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/l;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/p;->a(Lrx/l;)V

    return-void
.end method
