.class Lar/com/hjg/pngj/chunks/ai$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/chunks/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/chunks/ai;->a(Lar/com/hjg/pngj/chunks/PngChunk;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lar/com/hjg/pngj/chunks/PngChunk;

.field final synthetic b:Lar/com/hjg/pngj/chunks/ai;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/chunks/ai;Lar/com/hjg/pngj/chunks/PngChunk;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/ai$1;->b:Lar/com/hjg/pngj/chunks/ai;

    iput-object p2, p0, Lar/com/hjg/pngj/chunks/ai$1;->a:Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1
    .param p1, "c2"    # Lar/com/hjg/pngj/chunks/PngChunk;

    .prologue
    .line 43
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ai$1;->a:Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-static {v0, p1}, Lar/com/hjg/pngj/chunks/c;->a(Lar/com/hjg/pngj/chunks/PngChunk;Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v0

    return v0
.end method
