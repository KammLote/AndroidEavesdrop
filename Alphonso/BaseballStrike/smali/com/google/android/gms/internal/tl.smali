.class public final Lcom/google/android/gms/internal/tl;
.super Lcom/google/android/gms/internal/qf;


# instance fields
.field private final zzbYW:Lcom/google/android/gms/internal/qr;

.field private final zzccF:Lcom/google/android/gms/internal/vp;

.field private final zzcfr:Lcom/google/firebase/database/ValueEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/tl;->zzbYW:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/tl;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/tl;->zzccF:Lcom/google/android/gms/internal/vp;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/tl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/tl;

    iget-object v0, v0, Lcom/google/android/gms/internal/tl;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/tl;

    iget-object v0, v0, Lcom/google/android/gms/internal/tl;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/tl;

    iget-object v0, p1, Lcom/google/android/gms/internal/tl;->zzccF:Lcom/google/android/gms/internal/vp;

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->zzccF:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tl;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->zzccF:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueEventRegistration"

    return-object v0
.end method

.method public final zzGG()Lcom/google/android/gms/internal/vp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tl;->zzccF:Lcom/google/android/gms/internal/vp;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/qf;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/tl;

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/android/gms/internal/tl;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/tl;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vp;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vf;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vg;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/tl;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vf;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/wz;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/vg;

    sget-object v2, Lcom/google/android/gms/internal/vi;->zzcgS:Lcom/google/android/gms/internal/vi;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/vi;Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object v1
.end method

.method public final zza(Lcom/google/android/gms/internal/vg;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tl;->zzGV()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tl;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vg;->zzIb()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/ValueEventListener;->onDataChange(Lcom/google/firebase/database/DataSnapshot;)V

    goto :goto_0
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tl;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vi;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vi;->zzcgS:Lcom/google/android/gms/internal/vi;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzc(Lcom/google/android/gms/internal/qf;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/tl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/tl;

    iget-object v0, p1, Lcom/google/android/gms/internal/tl;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/tl;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
