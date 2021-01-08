.class public final Lcom/google/android/gms/internal/pw;
.super Lcom/google/android/gms/internal/qf;


# instance fields
.field private final zzbYW:Lcom/google/android/gms/internal/qr;

.field private final zzccE:Lcom/google/firebase/database/ChildEventListener;

.field private final zzccF:Lcom/google/android/gms/internal/vp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/vp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pw;->zzbYW:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/pw;->zzccF:Lcom/google/android/gms/internal/vp;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/pw;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/pw;

    iget-object v0, v0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/pw;

    iget-object v0, v0, Lcom/google/android/gms/internal/pw;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v1, p0, Lcom/google/android/gms/internal/pw;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/pw;

    iget-object v0, p1, Lcom/google/android/gms/internal/pw;->zzccF:Lcom/google/android/gms/internal/vp;

    iget-object v1, p0, Lcom/google/android/gms/internal/pw;->zzccF:Lcom/google/android/gms/internal/vp;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/pw;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/pw;->zzccF:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ChildEventRegistration"

    return-object v0
.end method

.method public final zzGG()Lcom/google/android/gms/internal/vp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pw;->zzccF:Lcom/google/android/gms/internal/vp;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/qf;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/pw;

    iget-object v1, p0, Lcom/google/android/gms/internal/pw;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/pw;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/vp;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vf;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vg;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/pw;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vf;->zzHX()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vf;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/wz;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vf;->zzHZ()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vf;->zzHZ()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wj;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/vg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vf;->zzHY()Lcom/google/android/gms/internal/vi;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/vi;Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/vg;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pw;->zzGV()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vg;->zzHY()Lcom/google/android/gms/internal/vi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vi;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vg;->zzIb()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/ChildEventListener;->onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vg;->zzIb()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vg;->zzIc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vg;->zzIb()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vg;->zzIc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vg;->zzIb()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vg;->zzIc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ChildEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vi;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vi;->zzcgS:Lcom/google/android/gms/internal/vi;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzc(Lcom/google/android/gms/internal/qf;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/pw;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/pw;

    iget-object v0, p1, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/pw;->zzccE:Lcom/google/firebase/database/ChildEventListener;

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
