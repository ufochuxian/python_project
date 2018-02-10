.class Lrx/h/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h/h;->a(Ljava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lrx/h/h;


# direct methods
.method constructor <init>(Lrx/h/h;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    .local p0, "this":Lrx/h/h$4;, "Lrx/h/h.4;"
    iput-object p1, p0, Lrx/h/h$4;->b:Lrx/h/h;

    iput-object p2, p0, Lrx/h/h$4;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 165
    .local p0, "this":Lrx/h/h$4;, "Lrx/h/h.4;"
    iget-object v0, p0, Lrx/h/h$4;->b:Lrx/h/h;

    iget-object v1, p0, Lrx/h/h$4;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/h/h;->h(Ljava/lang/Object;)V

    .line 166
    return-void
.end method
