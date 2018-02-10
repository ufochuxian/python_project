.class Lorg/jsoup/select/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lorg/jsoup/nodes/f;

.field private final b:Lorg/jsoup/select/c;

.field private final c:Lorg/jsoup/select/d;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/f;Lorg/jsoup/select/c;Lorg/jsoup/select/d;)V
    .locals 0
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "elements"    # Lorg/jsoup/select/c;
    .param p3, "eval"    # Lorg/jsoup/select/d;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/jsoup/select/a$a;->a:Lorg/jsoup/nodes/f;

    .line 35
    iput-object p2, p0, Lorg/jsoup/select/a$a;->b:Lorg/jsoup/select/c;

    .line 36
    iput-object p3, p0, Lorg/jsoup/select/a$a;->c:Lorg/jsoup/select/d;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/h;I)V
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 40
    instance-of v1, p1, Lorg/jsoup/nodes/f;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 41
    check-cast v0, Lorg/jsoup/nodes/f;

    .line 42
    .local v0, "el":Lorg/jsoup/nodes/f;
    iget-object v1, p0, Lorg/jsoup/select/a$a;->c:Lorg/jsoup/select/d;

    iget-object v2, p0, Lorg/jsoup/select/a$a;->a:Lorg/jsoup/nodes/f;

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/select/d;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lorg/jsoup/select/a$a;->b:Lorg/jsoup/select/c;

    invoke-virtual {v1, v0}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/f;)Z

    .line 45
    .end local v0    # "el":Lorg/jsoup/nodes/f;
    :cond_0
    return-void
.end method

.method public b(Lorg/jsoup/nodes/h;I)V
    .locals 0
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 49
    return-void
.end method
