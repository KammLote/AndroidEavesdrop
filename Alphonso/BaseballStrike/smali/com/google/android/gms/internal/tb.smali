.class final Lcom/google/android/gms/internal/tb;
.super Lcom/google/android/gms/internal/qf;


# instance fields
.field private zzccF:Lcom/google/android/gms/internal/vp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/tb;->zzccF:Lcom/google/android/gms/internal/vp;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/tb;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/tb;

    iget-object v0, p1, Lcom/google/android/gms/internal/tb;->zzccF:Lcom/google/android/gms/internal/vp;

    iget-object v1, p0, Lcom/google/android/gms/internal/tb;->zzccF:Lcom/google/android/gms/internal/vp;

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
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tb;->zzccF:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzGG()Lcom/google/android/gms/internal/vp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tb;->zzccF:Lcom/google/android/gms/internal/vp;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/qf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/tb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/tb;-><init>(Lcom/google/android/gms/internal/vp;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vf;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vg;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vi;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/qf;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/tb;

    return v0
.end method
