.class Lrx/h/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h/g;->a(Lrx/l;Lrx/h/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/h/g$b;

.field final synthetic b:Lrx/h/g;


# direct methods
.method constructor <init>(Lrx/h/g;Lrx/h/g$b;)V
    .locals 0

    .prologue
    .line 67
    .local p0, "this":Lrx/h/g$1;, "Lrx/h/g.1;"
    iput-object p1, p0, Lrx/h/g$1;->b:Lrx/h/g;

    iput-object p2, p0, Lrx/h/g$1;->a:Lrx/h/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 70
    .local p0, "this":Lrx/h/g$1;, "Lrx/h/g.1;"
    iget-object v0, p0, Lrx/h/g$1;->b:Lrx/h/g;

    iget-object v1, p0, Lrx/h/g$1;->a:Lrx/h/g$b;

    invoke-virtual {v0, v1}, Lrx/h/g;->b(Lrx/h/g$b;)V

    .line 71
    return-void
.end method
