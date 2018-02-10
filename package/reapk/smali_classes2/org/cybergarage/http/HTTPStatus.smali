.class public Lorg/cybergarage/http/HTTPStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BAD_REQUEST:I = 0x190

.field public static final CONTINUE:I = 0x64

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final INVALID_RANGE:I = 0x1a0

.field public static final NOT_FOUND:I = 0x194

.field public static final OK:I = 0xc8

.field public static final PARTIAL_CONTENT:I = 0xce

.field public static final PRECONDITION_FAILED:I = 0x19c


# instance fields
.field private reasonPhrase:Ljava/lang/String;

.field private statusCode:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPStatus;->version:Ljava/lang/String;

    .line 101
    iput v1, p0, Lorg/cybergarage/http/HTTPStatus;->statusCode:I

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 79
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPStatus;->setStatusCode(I)V

    .line 81
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPStatus;->version:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/HTTPStatus;->statusCode:I

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 93
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPStatus;->set(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "ver"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPStatus;->version:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/HTTPStatus;->statusCode:I

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 86
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p2}, Lorg/cybergarage/http/HTTPStatus;->setStatusCode(I)V

    .line 88
    invoke-virtual {p0, p3}, Lorg/cybergarage/http/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static final code2String(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 51
    sparse-switch p0, :sswitch_data_0

    .line 70
    const-string v0, ""

    :goto_0
    return-object v0

    .line 54
    :sswitch_0
    const-string v0, "Continue"

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v0, "OK"

    goto :goto_0

    .line 58
    :sswitch_2
    const-string v0, "Partial Content"

    goto :goto_0

    .line 60
    :sswitch_3
    const-string v0, "Bad Request"

    goto :goto_0

    .line 62
    :sswitch_4
    const-string v0, "Not Found"

    goto :goto_0

    .line 64
    :sswitch_5
    const-string v0, "Precondition Failed"

    goto :goto_0

    .line 66
    :sswitch_6
    const-string v0, "Invalid Range"

    goto :goto_0

    .line 68
    :sswitch_7
    const-string v0, "Internal Server Error"

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xce -> :sswitch_2
        0x190 -> :sswitch_3
        0x194 -> :sswitch_4
        0x19c -> :sswitch_5
        0x1a0 -> :sswitch_6
        0x1f4 -> :sswitch_7
    .end sparse-switch
.end method

.method public static final isSuccessful(I)Z
    .locals 1
    .param p0, "statCode"    # I

    .prologue
    .line 140
    const/16 v0, 0xc8

    if-gt v0, p0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/cybergarage/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/cybergarage/http/HTTPStatus;->statusCode:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/cybergarage/http/HTTPStatus;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPStatus;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lorg/cybergarage/http/HTTPStatus;->isSuccessful(I)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 8
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x1f4

    .line 156
    if-nez p1, :cond_1

    .line 158
    const-string v6, "1.1"

    invoke-virtual {p0, v6}, Lorg/cybergarage/http/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v7}, Lorg/cybergarage/http/HTTPStatus;->setStatusCode(I)V

    .line 160
    invoke-static {v7}, Lorg/cybergarage/http/HTTPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cybergarage/http/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v4, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "ver":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cybergarage/http/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 176
    .local v1, "codeStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 179
    .local v0, "code":I
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 183
    :goto_1
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPStatus;->setStatusCode(I)V

    .line 185
    const-string v3, ""

    .line 186
    .local v3, "reason":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_2

    .line 192
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/cybergarage/http/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 193
    .end local v0    # "code":I
    .end local v1    # "codeStr":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "ver":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "code":I
    .restart local v1    # "codeStr":Ljava/lang/String;
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    .restart local v5    # "ver":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_3

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    goto :goto_2

    .line 180
    .end local v3    # "reason":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lorg/cybergarage/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/cybergarage/http/HTTPStatus;->statusCode:I

    .line 112
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/cybergarage/http/HTTPStatus;->version:Ljava/lang/String;

    .line 107
    return-void
.end method
