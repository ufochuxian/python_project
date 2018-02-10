.class public Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "DIDL-Lite"

.field public static final OBJECT_CONTAINER:Ljava/lang/String; = "object.container"

.field public static final PARENTID:Ljava/lang/String; = "parentID"

.field public static final RES:Ljava/lang/String; = "res"

.field public static final RESTICTED:Ljava/lang/String; = "restricted"

.field public static final RES_PROTOCOLINFO:Ljava/lang/String; = "protocolInfo"

.field public static final SEARCHABLE:Ljava/lang/String; = "searchable"

.field public static final XMLNS:Ljava/lang/String; = "xmlns"

.field public static final XMLNS_DC:Ljava/lang/String; = "xmlns:dc"

.field public static final XMLNS_DC_URL:Ljava/lang/String; = "http://purl.org/dc/elements/1.1/"

.field public static final XMLNS_UPNP:Ljava/lang/String; = "xmlns:upnp"

.field public static final XMLNS_UPNP_URL:Ljava/lang/String; = "urn:schemas-upnp-org:metadata-1-0/upnp/"

.field public static final XMLNS_URL:Ljava/lang/String; = "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"


# instance fields
.field private nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    .line 62
    return-void
.end method


# virtual methods
.method public addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    return-object v0
.end method

.method public getNContentNodes()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->size()I

    move-result v0

    return v0
.end method

.method public output(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "ps"    # Ljava/io/PrintWriter;

    .prologue
    .line 98
    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    new-instance v1, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;

    invoke-direct {v1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;-><init>()V

    .line 102
    .local v1, "didlNode":Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLiteNode;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 107
    const-string v5, ">"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->getNContentNodes()I

    move-result v3

    .line 110
    .local v3, "nNodes":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "</"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 113
    .local v0, "contentNode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, p1, v5, v6}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->output(Ljava/io/PrintWriter;IZ)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->clear()V

    .line 73
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->nodeList:Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNodeList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 124
    .local v0, "byteOut":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 125
    .local v3, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 126
    .local v2, "pr":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->output(Ljava/io/PrintWriter;)V

    .line 127
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 128
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 133
    .end local v0    # "byteOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "pr":Ljava/io/PrintWriter;
    .end local v3    # "writer":Ljava/io/Writer;
    :goto_0
    return-object v4

    .line 129
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 133
    const-string v4, ""

    goto :goto_0
.end method
