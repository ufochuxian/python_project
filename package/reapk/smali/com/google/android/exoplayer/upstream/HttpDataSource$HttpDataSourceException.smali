.class public Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation


# instance fields
.field public final dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSpec;)V
    .locals 0
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 106
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/DataSpec;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/io/IOException;
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 112
    return-void
.end method
