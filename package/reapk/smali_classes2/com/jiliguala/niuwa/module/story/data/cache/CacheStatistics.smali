.class public Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mMaxSize:J

.field private final mObjectCount:I

.field private final mSize:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0
    .param p1, "objectCount"    # I
    .param p2, "size"    # J
    .param p4, "maxSize"    # J

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;->mObjectCount:I

    .line 15
    iput-wide p2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;->mSize:J

    .line 16
    iput-wide p4, p0, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;->mMaxSize:J

    .line 17
    return-void
.end method


# virtual methods
.method public getMaxSize()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;->mMaxSize:J

    return-wide v0
.end method

.method public getObjectCount()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;->mObjectCount:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;->mSize:J

    return-wide v0
.end method
