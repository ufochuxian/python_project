.class Lorg/jsoup/nodes/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Lorg/jsoup/nodes/Document$a;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Document$a;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p1, p0, Lorg/jsoup/nodes/h$a;->a:Ljava/lang/StringBuilder;

    .line 655
    iput-object p2, p0, Lorg/jsoup/nodes/h$a;->b:Lorg/jsoup/nodes/Document$a;

    .line 656
    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/h;I)V
    .locals 2
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lorg/jsoup/nodes/h$a;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/nodes/h$a;->b:Lorg/jsoup/nodes/Document$a;

    invoke-virtual {p1, v0, p2, v1}, Lorg/jsoup/nodes/h;->a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V

    .line 660
    return-void
.end method

.method public b(Lorg/jsoup/nodes/h;I)V
    .locals 2
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 663
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lorg/jsoup/nodes/h$a;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/nodes/h$a;->b:Lorg/jsoup/nodes/Document$a;

    invoke-virtual {p1, v0, p2, v1}, Lorg/jsoup/nodes/h;->b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V

    .line 665
    :cond_0
    return-void
.end method
