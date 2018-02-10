.class public abstract Lar/com/hjg/pngj/chunks/af;
.super Lar/com/hjg/pngj/chunks/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/chunks/af$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String; = "Title"

.field public static final l:Ljava/lang/String; = "Author"

.field public static final m:Ljava/lang/String; = "Description"

.field public static final n:Ljava/lang/String; = "Copyright"

.field public static final o:Ljava/lang/String; = "Creation Time"

.field public static final p:Ljava/lang/String; = "Software"

.field public static final q:Ljava/lang/String; = "Disclaimer"

.field public static final r:Ljava/lang/String; = "Warning"

.field public static final s:Ljava/lang/String; = "Source"

.field public static final t:Ljava/lang/String; = "Comment"


# instance fields
.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "info"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/chunks/t;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/s;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/af;->i:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lar/com/hjg/pngj/chunks/af;->j:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public i()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/af;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/af;->j:Ljava/lang/String;

    return-object v0
.end method
