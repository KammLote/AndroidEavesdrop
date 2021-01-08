.class public final Lcom/google/android/gms/internal/vg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/vh;


# instance fields
.field private final zzcgG:Lcom/google/android/gms/internal/qf;

.field private final zzcgI:Lcom/google/android/gms/internal/vi;

.field private final zzcgM:Lcom/google/firebase/database/DataSnapshot;

.field private final zzcgN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vi;Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vg;->zzcgI:Lcom/google/android/gms/internal/vi;

    iput-object p2, p0, Lcom/google/android/gms/internal/vg;->zzcgG:Lcom/google/android/gms/internal/qf;

    iput-object p3, p0, Lcom/google/android/gms/internal/vg;->zzcgM:Lcom/google/firebase/database/DataSnapshot;

    iput-object p4, p0, Lcom/google/android/gms/internal/vg;->zzcgN:Ljava/lang/String;

    return-void
.end method

.method private final zzFp()Lcom/google/android/gms/internal/qo;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/vg;->zzcgM:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vg;->zzcgI:Lcom/google/android/gms/internal/vi;

    sget-object v2, Lcom/google/android/gms/internal/vi;->zzcgS:Lcom/google/android/gms/internal/vi;

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzHd()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/vg;->zzcgI:Lcom/google/android/gms/internal/vi;

    sget-object v1, Lcom/google/android/gms/internal/vi;->zzcgS:Lcom/google/android/gms/internal/vi;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vg;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vg;->zzcgI:Lcom/google/android/gms/internal/vi;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/vg;->zzcgM:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/vg;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vg;->zzcgI:Lcom/google/android/gms/internal/vi;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/vg;->zzcgM:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v2}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/vg;->zzcgM:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzHW()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vg;->zzcgG:Lcom/google/android/gms/internal/qf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/qf;->zza(Lcom/google/android/gms/internal/vg;)V

    return-void
.end method

.method public final zzHY()Lcom/google/android/gms/internal/vi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vg;->zzcgI:Lcom/google/android/gms/internal/vi;

    return-object v0
.end method

.method public final zzIb()Lcom/google/firebase/database/DataSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vg;->zzcgM:Lcom/google/firebase/database/DataSnapshot;

    return-object v0
.end method

.method public final zzIc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vg;->zzcgN:Ljava/lang/String;

    return-object v0
.end method
