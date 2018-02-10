.class public Lcom/bigkoo/pickerview/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bigkoo/pickerview/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bigkoo/pickerview/a/c;"
    }
.end annotation


# static fields
.field public static final a:I = 0x4


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/bigkoo/pickerview/a/a;, "Lcom/bigkoo/pickerview/a/a<TT;>;"
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/bigkoo/pickerview/a/a;-><init>(Ljava/util/ArrayList;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/bigkoo/pickerview/a/a;, "Lcom/bigkoo/pickerview/a/a<TT;>;"
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bigkoo/pickerview/a/a;->b:Ljava/util/ArrayList;

    .line 26
    iput p2, p0, Lcom/bigkoo/pickerview/a/a;->c:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/bigkoo/pickerview/a/a;, "Lcom/bigkoo/pickerview/a/a<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 52
    .local p0, "this":Lcom/bigkoo/pickerview/a/a;, "Lcom/bigkoo/pickerview/a/a<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 39
    .local p0, "this":Lcom/bigkoo/pickerview/a/a;, "Lcom/bigkoo/pickerview/a/a<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/bigkoo/pickerview/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
