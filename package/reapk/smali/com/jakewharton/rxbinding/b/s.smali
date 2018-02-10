.class final Lcom/jakewharton/rxbinding/b/s;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/RadioGroup;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/b/s;->a:Landroid/widget/RadioGroup;

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/a/b;->a()V

    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/b/s$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/b/s$1;-><init>(Lcom/jakewharton/rxbinding/b/s;Lrx/l;)V

    .line 27
    .local v0, "listener":Landroid/widget/RadioGroup$OnCheckedChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/s;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 29
    new-instance v1, Lcom/jakewharton/rxbinding/b/s$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/b/s$2;-><init>(Lcom/jakewharton/rxbinding/b/s;)V

    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 36
    iget-object v1, p0, Lcom/jakewharton/rxbinding/b/s;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/b/s;->a(Lrx/l;)V

    return-void
.end method
