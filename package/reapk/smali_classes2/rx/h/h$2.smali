.class Lrx/h/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h/h;->e(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/h/h;


# direct methods
.method constructor <init>(Lrx/h/h;)V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lrx/h/h$2;, "Lrx/h/h.2;"
    iput-object p1, p0, Lrx/h/h$2;->a:Lrx/h/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lrx/h/h$2;, "Lrx/h/h.2;"
    iget-object v0, p0, Lrx/h/h$2;->a:Lrx/h/h;

    invoke-virtual {v0}, Lrx/h/h;->K()V

    .line 98
    return-void
.end method
