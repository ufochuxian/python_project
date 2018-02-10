.class Lrx/d/a$b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a$b;->b(Lrx/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/d/a$b;


# direct methods
.method constructor <init>(Lrx/d/a$b;Lrx/l;)V
    .locals 0

    .prologue
    .line 623
    .local p0, "this":Lrx/d/a$b$2;, "Lrx/d/a$b.2;"
    iput-object p1, p0, Lrx/d/a$b$2;->b:Lrx/d/a$b;

    iput-object p2, p0, Lrx/d/a$b$2;->a:Lrx/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 626
    .local p0, "this":Lrx/d/a$b$2;, "Lrx/d/a$b.2;"
    iget-object v0, p0, Lrx/d/a$b$2;->b:Lrx/d/a$b;

    iget-object v0, v0, Lrx/d/a$b;->b:Lrx/i/b;

    iget-object v1, p0, Lrx/d/a$b$2;->a:Lrx/l;

    invoke-virtual {v0, v1}, Lrx/i/b;->b(Lrx/m;)V

    .line 627
    return-void
.end method
