.class final Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
.super Lcom/google/android/exoplayer/extractor/mp4/Atom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContainerAtom"
.end annotation


# instance fields
.field public final containerChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field public final endPosition:J

.field public final leafChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "endPosition"    # J

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;-><init>(I)V

    .line 200
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 203
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 1
    .param p1, "atom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public add(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V
    .locals 1
    .param p1, "atom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public getChildAtomOfTypeCount(I)I
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "count":I
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 272
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 273
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 274
    .local v0, "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v4, p1, :cond_0

    .line 275
    add-int/lit8 v1, v1, 0x1

    .line 272
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 279
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 280
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 281
    .local v0, "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    if-ne v4, p1, :cond_2

    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 279
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 285
    .end local v0    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    :cond_3
    return v1
.end method

.method public getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 253
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 254
    .local v1, "childrenSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 255
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 256
    .local v0, "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    if-ne v3, p1, :cond_0

    .line 260
    .end local v0    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    :goto_1
    return-object v0

    .line 254
    .restart local v0    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 233
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 234
    .local v1, "childrenSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 235
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 236
    .local v0, "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v3, p1, :cond_0

    .line 240
    .end local v0    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :goto_1
    return-object v0

    .line 234
    .restart local v0    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leaves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    new-array v2, v3, [Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    new-array v2, v3, [Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 291
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    return-object v0
.end method
