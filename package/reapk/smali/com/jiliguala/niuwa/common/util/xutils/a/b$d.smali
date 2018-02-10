.class Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# static fields
.field private static final b:B = 0xdt

.field private static final c:B = 0xat


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

.field private final d:Ljava/io/InputStream;

.field private final e:Ljava/nio/charset/Charset;

.field private f:[B

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/io/InputStream;)V
    .locals 1
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 1083
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/io/InputStream;I)V

    .line 1084
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/io/InputStream;I)V
    .locals 2
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "capacity"    # I

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->a:Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->e:Ljava/nio/charset/Charset;

    .line 1099
    if-nez p2, :cond_0

    .line 1100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1102
    :cond_0
    if-gez p3, :cond_1

    .line 1103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_1
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->d:Ljava/io/InputStream;

    .line 1107
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    .line 1108
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->e:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1195
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->d:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1196
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1197
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 1199
    :cond_0
    iput v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    .line 1200
    iput v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->h:I

    .line 1201
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 1136
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->d:Ljava/io/InputStream;

    monitor-enter v5

    .line 1137
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    if-nez v4, :cond_0

    .line 1138
    new-instance v4, Ljava/io/IOException;

    const-string v6, "LineReader is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1187
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1144
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->h:I

    if-lt v4, v6, :cond_1

    .line 1145
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->b()V

    .line 1148
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->h:I

    if-eq v0, v4, :cond_4

    .line 1149
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_3

    .line 1150
    iget v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    if-eq v0, v4, :cond_2

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v4, v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    add-int/lit8 v1, v0, -0x1

    .line 1151
    .local v1, "lineEnd":I
    :goto_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    iget v7, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1152
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    .line 1153
    monitor-exit v5

    .line 1183
    .end local v1    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :goto_2
    return-object v3

    :cond_2
    move v1, v0

    .line 1150
    goto :goto_1

    .line 1148
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1158
    :cond_4
    new-instance v2, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d$1;

    iget v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->h:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x50

    invoke-direct {v2, p0, v4}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d$1;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;I)V

    .line 1171
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :cond_5
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    iget v7, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->h:I

    iget v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1173
    const/4 v4, -0x1

    iput v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->h:I

    .line 1174
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->b()V

    .line 1176
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    :goto_3
    iget v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->h:I

    if-eq v0, v4, :cond_5

    .line 1177
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_7

    .line 1178
    iget v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    if-eq v0, v4, :cond_6

    .line 1179
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    iget v7, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    sub-int v7, v0, v7

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1181
    :cond_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1182
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->g:I

    .line 1183
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1176
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->d:Ljava/io/InputStream;

    monitor-enter v1

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    if-eqz v0, :cond_0

    .line 1120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->f:[B

    .line 1121
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1123
    :cond_0
    monitor-exit v1

    .line 1124
    return-void

    .line 1123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
